.class public Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field protected mFilterInputTextureUniform3:I

.field protected mFilterThirdTextureCoordinateAttribute:I

.field protected mHasReceivedThirdFrame:Z

.field protected mHasSetSecondTexture:Z

.field protected mInputRotation3:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mThirdFrameCheckDisabled:Z

.field protected mThirdFrameWasVideo:Z

.field protected mThirdInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\nattribute vec4 inputTextureCoordinate3;\n\nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvarying vec2 textureCoordinate3;\n\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n    textureCoordinate3 = inputTextureCoordinate3.xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mInputRotation3:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasSetSecondTexture:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasReceivedThirdFrame:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdFrameWasVideo:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdFrameCheckDisabled:Z

    sget-object p1, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->noRotationTextureCoordinates:[F

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->a:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public disableThirdFrameCheck()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdFrameCheckDisabled:Z

    return-void
.end method

.method protected getRotationLast()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mInputRotation3:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method protected getRotationWithIndex(I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->getRotationLast()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->getRotationWithIndex(I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p1

    return-object p1
.end method

.method protected initializeAttributes()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->initializeAttributes()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate3"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    return-void
.end method

.method protected inputFramebufferBindTexture()V
    .locals 8

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->inputFramebufferBindTexture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterInputTextureUniform3:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mInputRotation3:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterThirdTextureCoordinateAttribute:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method protected inputFramebufferUnlock()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->inputFramebufferUnlock()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    return-void
.end method

.method public nextAvailableTextureIndex()I
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasSetSecondTexture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->nextAvailableTextureIndex()I

    move-result v0

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate3"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterThirdTextureCoordinateAttribute:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture3"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterInputTextureUniform3:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mFilterThirdTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method protected receivedFrame(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrameLast()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrame(I)V

    :goto_0
    return-void
.end method

.method protected receivedFrameLast()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasReceivedThirdFrame:Z

    return-void
.end method

.method protected receivedFrames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasReceivedThirdFrame:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrames()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected receivedFramesCheck()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFramesCheck()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdFrameCheckDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasReceivedThirdFrame:Z

    :cond_0
    return-void
.end method

.method protected receivedFramesResume()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFramesResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasReceivedThirdFrame:Z

    return-void
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasSetSecondTexture:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    :goto_0
    return-void
.end method

.method protected setInputFramebufferLast(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mThirdInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputRotationLast(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    :goto_0
    return-void
.end method

.method protected setInputRotationLast(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mInputRotation3:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->mHasSetSecondTexture:Z

    :cond_1
    return-void
.end method
