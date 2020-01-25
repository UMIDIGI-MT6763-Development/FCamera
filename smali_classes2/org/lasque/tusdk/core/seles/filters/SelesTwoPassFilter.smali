.class public Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field protected final mNoRotationTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mSecondFilterInputTextureUniform:I

.field protected mSecondFilterInputTextureUniform2:I

.field protected mSecondFilterPositionAttribute:I

.field protected mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field protected mSecondFilterTextureCoordinateAttribute:I

.field protected mSecondOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    const-string v1, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->a:Ljava/lang/String;

    iput-object p4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->b:Ljava/lang/String;

    sget-object p1, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->noRotationTextureCoordinates:[F

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mNoRotationTextureBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object v0
.end method

.method protected initializeSecondaryAttributes()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    return-void
.end method

.method protected onInitOnGLThread()V
    .locals 5

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->initializeSecondaryAttributes()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Program link log: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Fragment shader compile log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Vertex link log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Filter shader link failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterPositionAttribute:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterTextureCoordinateAttribute:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterInputTextureUniform:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture2"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterInputTextureUniform2:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterPositionAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public removeOutputFramebuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->isPreventRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->getOutputTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    invoke-virtual {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->setUniformsForProgramAtIndex(I)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mBackgroundColorRed:F

    iget v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mBackgroundColorGreen:F

    iget v3, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mBackgroundColorBlue:F

    iget v5, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mBackgroundColorAlpha:F

    invoke-static {v1, v2, v3, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFilterInputTextureUniform:I

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v6, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFilterPositionAttribute:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v11, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFilterTextureCoordinateAttribute:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x4

    const/4 v5, 0x5

    invoke-static {v5, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v6, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    const/4 v6, 0x0

    iput-object v6, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->getOutputTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v4}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v7

    iput-object v7, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v7, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v7}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    iget-object v7, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v7}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget-boolean v7, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mUsingNextFrameForImageCapture:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v7}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->setUniformsForProgramAtIndex(I)V

    const v7, 0x84c3

    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v7, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v7}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v7

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v8, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterTextureCoordinateAttribute:I

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mNoRotationTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterInputTextureUniform:I

    const/4 v7, 0x3

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v8, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mSecondFilterPositionAttribute:I

    move-object/from16 v13, p1

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v7, v7, v7, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {v5, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    iput-object v6, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->mUsingNextFrameForImageCapture:Z

    return-void
.end method

.method public setUniformsForProgramAtIndex(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setUniformsForProgramAtIndex(I)V

    return-void
.end method
