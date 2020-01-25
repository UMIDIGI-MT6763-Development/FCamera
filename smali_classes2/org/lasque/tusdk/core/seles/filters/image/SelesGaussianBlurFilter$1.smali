.class Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->switchTo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->c(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Program link log: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Fragment shader compile log: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->e(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Vertex link log: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->f(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Filter shader link failed: %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->g(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    const-string v5, "position"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->h(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    const-string v5, "inputTextureCoordinate"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->i(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    const-string v5, "inputImageTexture"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->c(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->j(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    const-string v5, "texelWidthOffset"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->k(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    const-string v5, "texelHeightOffset"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->e(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->l(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->m(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->n(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->a:Ljava/lang/String;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->c(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->o(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->p(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->q(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Program link log: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->r(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Fragment shader compile log: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->s(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Vertex link log: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->t(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Filter shader link failed: %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->u(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->f(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->v(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "inputTextureCoordinate"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->g(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->w(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "inputImageTexture"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->h(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->x(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "inputImageTexture2"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->i(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->y(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "texelWidthOffset"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->j(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->z(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "texelHeightOffset"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->k(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->A(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->B(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->C(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method
