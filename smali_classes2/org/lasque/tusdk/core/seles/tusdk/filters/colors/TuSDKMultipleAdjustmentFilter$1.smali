.class Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)I

    move-result v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)I

    move-result v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)I

    move-result v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)I

    move-result v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :goto_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
