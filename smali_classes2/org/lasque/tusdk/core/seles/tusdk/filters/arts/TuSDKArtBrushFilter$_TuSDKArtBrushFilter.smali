.class Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_TuSDKArtBrushFilter"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sab1"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->disableSecondFrameCheck()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->create(FF)Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    :goto_0
    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->a:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method


# virtual methods
.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->a()V

    return-void
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "cropAspectRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->a:I

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->a()V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->a()V

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;->a()V

    :cond_0
    return-void
.end method
