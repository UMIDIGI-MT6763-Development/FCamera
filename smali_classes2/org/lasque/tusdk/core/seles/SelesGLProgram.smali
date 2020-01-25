.class public Lorg/lasque/tusdk/core/seles/SelesGLProgram;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->e:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->i:J

    const v1, 0x8b31

    invoke-direct {p0, p1, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    iget p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    if-nez p1, :cond_0

    const-string p1, "Failed to compile vertex shader"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const p1, 0x8b30

    invoke-direct {p0, p2, p1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    iget p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    if-nez p1, :cond_1

    const-string p1, "Failed to compile fragment shader"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    iget p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    iget p2, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    iget p2, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 3

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Failed to load vertex shader"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget-object v2, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v2, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->compileShader(Ljava/lang/String;I[I)Ljava/lang/String;

    move-result-object p1

    aget v2, v0, v1

    if-nez v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->g:Ljava/lang/String;

    :goto_0
    return v1

    :cond_1
    aget p1, v0, v1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x8b30
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    return-void
.end method

.method public attributeIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public destory()V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    if-lez v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    if-lez v0, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    if-lez v0, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->destory()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getFragmentShaderLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->i:J

    return-wide v0
.end method

.method public getVertexShaderLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->e:Z

    return v0
.end method

.method public link()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v2, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    const/4 v3, 0x0

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v3

    if-gtz v1, :cond_0

    return v3

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iput v3, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->c:I

    :cond_1
    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iput v3, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->d:I

    :cond_2
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->e:Z

    return v0
.end method

.method public uniformIndex(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public use()V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public validate()V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->h:Ljava/lang/String;

    return-void
.end method
