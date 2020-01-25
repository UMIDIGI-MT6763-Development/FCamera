.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    const-string v1, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;uniform samplerExternalOES inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Program link log: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v3}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Fragment shader compile log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v3}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Vertex link log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v3}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Filter shader link failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "inputTextureCoordinate"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v1

    const-string v2, "inputImageTexture"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method
