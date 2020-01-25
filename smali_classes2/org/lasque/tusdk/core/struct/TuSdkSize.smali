.class public Lorg/lasque/tusdk/core/struct/TuSdkSize;
.super Ljava/lang/Object;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    return-void
.end method

.method private a(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxImageSide()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxImageSide()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    if-lez p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v1, v2, :cond_2

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, v2

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    goto :goto_0

    :cond_2
    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :goto_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->evenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->evenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    return-object p1
.end method

.method public static create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 0

    invoke-static {p0, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    return-object p0
.end method

.method public static create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/graphics/Rect;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createDP(Landroid/content/Context;II)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p2, p2

    invoke-static {p0, p2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public center()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0
.end method

.method public dp2Pix()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public evenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :cond_0
    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_1
    return-object v0
.end method

.method public getRatio()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getSizeRatio(II)I

    move-result v0

    return v0
.end method

.method public getRatioFloat()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isSize()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final limitScale()F
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getMaxTextureOptimizedSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->a(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public maxMinRatio()F
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public maxSide()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public maxSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1, v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v1
.end method

.method public minMaxRatio()F
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public minSide()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public minSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1, v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v1
.end method

.method public scale(F)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-direct {v0, v1, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->evenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{width: %s, height:%s };"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transforOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_1
    :goto_0
    return-object v0
.end method
