.class Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->a:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->create(FF)Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)I

    move-result v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-static {v4}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->c(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;F)F

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->d(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)F

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->e(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;F)V

    return-void
.end method
