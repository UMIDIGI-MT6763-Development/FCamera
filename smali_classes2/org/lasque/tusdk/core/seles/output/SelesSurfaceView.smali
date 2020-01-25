.class public Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$SelesSurfaceViewDelegate;
    }
.end annotation


# static fields
.field public static final Renderer_Max_FPS:I = 0x32


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$SelesSurfaceViewDelegate;

.field private g:Z

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x32

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a:I

    const/16 p1, 0x14

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->d:Z

    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x32

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a:I

    const/16 p1, 0x14

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->d:Z

    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->c:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->requestRender()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->getEnableFixedFrameRate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->h:Ljava/lang/Runnable;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getEnableFixedFrameRate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->d:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->c:I

    return v0
.end method

.method public getRendererFPS()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a:I

    return v0
.end method

.method public isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->e:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->vaildAndDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b()V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$SelesSurfaceViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->f:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$SelesSurfaceViewDelegate;

    return-void
.end method

.method public setEnableFixedFrameRate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->d:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->c:I

    invoke-super {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b()V

    return-void
.end method

.method public setRendererFPS(I)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a:I

    const/16 v0, 0x32

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a:I

    :cond_1
    const/16 p1, 0x3e8

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->a:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->b:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->postInvalidate()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->f:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$SelesSurfaceViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView$SelesSurfaceViewDelegate;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->e:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->g:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->e:Z

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
