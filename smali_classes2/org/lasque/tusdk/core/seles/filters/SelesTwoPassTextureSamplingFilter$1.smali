.class Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iget v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalTexelSpacing:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelWidthOffset:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iput v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelHeightOffset:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iput v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelWidthOffset:F

    iget v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalTexelSpacing:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelHeightOffset:F

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iget v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalTexelSpacing:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelWidthOffset:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;->b:Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;

    iput v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelHeightOffset:F

    return-void
.end method
