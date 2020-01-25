.class Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->b(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)F

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->c(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)F

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;->a:Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)I

    move-result v1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
