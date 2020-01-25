.class public Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;
.super Lorg/lasque/tusdk/core/seles/output/SelesView;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private c:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/output/SelesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)Lorg/lasque/tusdk/core/seles/sources/SelesPicture;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->removeAllTargets()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->requestRender()V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->removeAllTargets()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->requestRender()V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a()V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b()V

    return-void
.end method


# virtual methods
.method public disableTouchForOrigin()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public enableTouchForOrigin()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->submitFilterParameter()V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/output/SelesView;->requestRender()V

    return-void
.end method

.method public setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    const-string v1, "Normal"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez p1, :cond_3

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_3
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->removeAllTargets()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->requestRender()V

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, v0, v2, v3, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->setBackgroundColor(FFFF)V

    return-void
.end method
